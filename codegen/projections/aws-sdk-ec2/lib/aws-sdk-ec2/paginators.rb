# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Ec2
  module Paginators

    class DescribeAddressesAttribute
      # @param [Client] client
      # @param [Hash] params (see Client#describe_addresses_attribute)
      # @param [Hash] options (see Client#describe_addresses_attribute)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_addresses_attribute operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_addresses_attribute(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_addresses_attribute(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_addresses_attribute operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.addresses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeByoipCidrs
      # @param [Client] client
      # @param [Hash] params (see Client#describe_byoip_cidrs)
      # @param [Hash] options (see Client#describe_byoip_cidrs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_byoip_cidrs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_byoip_cidrs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_byoip_cidrs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_byoip_cidrs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.byoip_cidrs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeCapacityReservationFleets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_capacity_reservation_fleets)
      # @param [Hash] options (see Client#describe_capacity_reservation_fleets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_capacity_reservation_fleets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_capacity_reservation_fleets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_capacity_reservation_fleets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_capacity_reservation_fleets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.capacity_reservation_fleets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeCapacityReservations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_capacity_reservations)
      # @param [Hash] options (see Client#describe_capacity_reservations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_capacity_reservations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_capacity_reservations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_capacity_reservations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_capacity_reservations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.capacity_reservations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeCarrierGateways
      # @param [Client] client
      # @param [Hash] params (see Client#describe_carrier_gateways)
      # @param [Hash] options (see Client#describe_carrier_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_carrier_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_carrier_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_carrier_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_carrier_gateways operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.carrier_gateways.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClassicLinkInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_classic_link_instances)
      # @param [Hash] options (see Client#describe_classic_link_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_classic_link_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_classic_link_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_classic_link_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_classic_link_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instances.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClientVpnAuthorizationRules
      # @param [Client] client
      # @param [Hash] params (see Client#describe_client_vpn_authorization_rules)
      # @param [Hash] options (see Client#describe_client_vpn_authorization_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_client_vpn_authorization_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_client_vpn_authorization_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_client_vpn_authorization_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_client_vpn_authorization_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.authorization_rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClientVpnConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_client_vpn_connections)
      # @param [Hash] options (see Client#describe_client_vpn_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_client_vpn_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_client_vpn_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_client_vpn_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_client_vpn_connections operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.connections.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClientVpnEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#describe_client_vpn_endpoints)
      # @param [Hash] options (see Client#describe_client_vpn_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_client_vpn_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_client_vpn_endpoints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_client_vpn_endpoints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_client_vpn_endpoints operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.client_vpn_endpoints.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClientVpnRoutes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_client_vpn_routes)
      # @param [Hash] options (see Client#describe_client_vpn_routes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_client_vpn_routes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_client_vpn_routes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_client_vpn_routes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_client_vpn_routes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.routes.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClientVpnTargetNetworks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_client_vpn_target_networks)
      # @param [Hash] options (see Client#describe_client_vpn_target_networks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_client_vpn_target_networks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_client_vpn_target_networks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_client_vpn_target_networks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_client_vpn_target_networks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.client_vpn_target_networks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeCoipPools
      # @param [Client] client
      # @param [Hash] params (see Client#describe_coip_pools)
      # @param [Hash] options (see Client#describe_coip_pools)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_coip_pools operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_coip_pools(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_coip_pools(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_coip_pools operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.coip_pools.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDhcpOptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_dhcp_options)
      # @param [Hash] options (see Client#describe_dhcp_options)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_dhcp_options operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_dhcp_options(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_dhcp_options(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_dhcp_options operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.dhcp_options.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEgressOnlyInternetGateways
      # @param [Client] client
      # @param [Hash] params (see Client#describe_egress_only_internet_gateways)
      # @param [Hash] options (see Client#describe_egress_only_internet_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_egress_only_internet_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_egress_only_internet_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_egress_only_internet_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_egress_only_internet_gateways operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.egress_only_internet_gateways.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeExportImageTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_export_image_tasks)
      # @param [Hash] options (see Client#describe_export_image_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_export_image_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_export_image_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_export_image_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_export_image_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.export_image_tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeFastSnapshotRestores
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fast_snapshot_restores)
      # @param [Hash] options (see Client#describe_fast_snapshot_restores)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fast_snapshot_restores operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fast_snapshot_restores(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fast_snapshot_restores(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_fast_snapshot_restores operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.fast_snapshot_restores.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeFleets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleets)
      # @param [Hash] options (see Client#describe_fleets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_fleets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.fleets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeFlowLogs
      # @param [Client] client
      # @param [Hash] params (see Client#describe_flow_logs)
      # @param [Hash] options (see Client#describe_flow_logs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_flow_logs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_flow_logs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_flow_logs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_flow_logs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.flow_logs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeFpgaImages
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fpga_images)
      # @param [Hash] options (see Client#describe_fpga_images)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fpga_images operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fpga_images(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fpga_images(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_fpga_images operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.fpga_images.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeHostReservationOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_host_reservation_offerings)
      # @param [Hash] options (see Client#describe_host_reservation_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_host_reservation_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_host_reservation_offerings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_host_reservation_offerings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_host_reservation_offerings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.offering_set.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeHostReservations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_host_reservations)
      # @param [Hash] options (see Client#describe_host_reservations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_host_reservations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_host_reservations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_host_reservations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_host_reservations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.host_reservation_set.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeHosts
      # @param [Client] client
      # @param [Hash] params (see Client#describe_hosts)
      # @param [Hash] options (see Client#describe_hosts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_hosts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_hosts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_hosts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_hosts operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.hosts.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeIamInstanceProfileAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_iam_instance_profile_associations)
      # @param [Hash] options (see Client#describe_iam_instance_profile_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_iam_instance_profile_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_iam_instance_profile_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_iam_instance_profile_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_iam_instance_profile_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.iam_instance_profile_associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeImportImageTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_import_image_tasks)
      # @param [Hash] options (see Client#describe_import_image_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_import_image_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_import_image_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_import_image_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_import_image_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.import_image_tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeImportSnapshotTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_import_snapshot_tasks)
      # @param [Hash] options (see Client#describe_import_snapshot_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_import_snapshot_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_import_snapshot_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_import_snapshot_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_import_snapshot_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.import_snapshot_tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstanceCreditSpecifications
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_credit_specifications)
      # @param [Hash] options (see Client#describe_instance_credit_specifications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_credit_specifications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_credit_specifications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_credit_specifications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_credit_specifications operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_credit_specifications.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstanceEventWindows
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_event_windows)
      # @param [Hash] options (see Client#describe_instance_event_windows)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_event_windows operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_event_windows(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_event_windows(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_event_windows operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_event_windows.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instances)
      # @param [Hash] options (see Client#describe_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reservations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstanceStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_status)
      # @param [Hash] options (see Client#describe_instance_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstanceTypeOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_type_offerings)
      # @param [Hash] options (see Client#describe_instance_type_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_type_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_type_offerings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_type_offerings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_type_offerings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_type_offerings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstanceTypes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_types)
      # @param [Hash] options (see Client#describe_instance_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_types operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_types.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInternetGateways
      # @param [Client] client
      # @param [Hash] params (see Client#describe_internet_gateways)
      # @param [Hash] options (see Client#describe_internet_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_internet_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_internet_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_internet_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_internet_gateways operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.internet_gateways.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeIpamPools
      # @param [Client] client
      # @param [Hash] params (see Client#describe_ipam_pools)
      # @param [Hash] options (see Client#describe_ipam_pools)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_ipam_pools operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_ipam_pools(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_ipam_pools(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_ipam_pools operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipam_pools.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeIpams
      # @param [Client] client
      # @param [Hash] params (see Client#describe_ipams)
      # @param [Hash] options (see Client#describe_ipams)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_ipams operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_ipams(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_ipams(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_ipams operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipams.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeIpamScopes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_ipam_scopes)
      # @param [Hash] options (see Client#describe_ipam_scopes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_ipam_scopes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_ipam_scopes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_ipam_scopes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_ipam_scopes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipam_scopes.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeIpv6Pools
      # @param [Client] client
      # @param [Hash] params (see Client#describe_ipv6_pools)
      # @param [Hash] options (see Client#describe_ipv6_pools)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_ipv6_pools operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_ipv6_pools(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_ipv6_pools(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_ipv6_pools operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipv6_pools.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLaunchTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#describe_launch_templates)
      # @param [Hash] options (see Client#describe_launch_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_launch_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_launch_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_launch_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_launch_templates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.launch_templates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLaunchTemplateVersions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_launch_template_versions)
      # @param [Hash] options (see Client#describe_launch_template_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_launch_template_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_launch_template_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_launch_template_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_launch_template_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.launch_template_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLocalGatewayRouteTables
      # @param [Client] client
      # @param [Hash] params (see Client#describe_local_gateway_route_tables)
      # @param [Hash] options (see Client#describe_local_gateway_route_tables)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_local_gateway_route_tables operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_local_gateway_route_tables(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_local_gateway_route_tables(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_local_gateway_route_tables operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.local_gateway_route_tables.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_local_gateway_route_table_virtual_interface_group_associations)
      # @param [Hash] options (see Client#describe_local_gateway_route_table_virtual_interface_group_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_local_gateway_route_table_virtual_interface_group_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_local_gateway_route_table_virtual_interface_group_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_local_gateway_route_table_virtual_interface_group_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_local_gateway_route_table_virtual_interface_group_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.local_gateway_route_table_virtual_interface_group_associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLocalGatewayRouteTableVpcAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_local_gateway_route_table_vpc_associations)
      # @param [Hash] options (see Client#describe_local_gateway_route_table_vpc_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_local_gateway_route_table_vpc_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_local_gateway_route_table_vpc_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_local_gateway_route_table_vpc_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_local_gateway_route_table_vpc_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.local_gateway_route_table_vpc_associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLocalGateways
      # @param [Client] client
      # @param [Hash] params (see Client#describe_local_gateways)
      # @param [Hash] options (see Client#describe_local_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_local_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_local_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_local_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_local_gateways operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.local_gateways.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLocalGatewayVirtualInterfaceGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_local_gateway_virtual_interface_groups)
      # @param [Hash] options (see Client#describe_local_gateway_virtual_interface_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_local_gateway_virtual_interface_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_local_gateway_virtual_interface_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_local_gateway_virtual_interface_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_local_gateway_virtual_interface_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.local_gateway_virtual_interface_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLocalGatewayVirtualInterfaces
      # @param [Client] client
      # @param [Hash] params (see Client#describe_local_gateway_virtual_interfaces)
      # @param [Hash] options (see Client#describe_local_gateway_virtual_interfaces)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_local_gateway_virtual_interfaces operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_local_gateway_virtual_interfaces(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_local_gateway_virtual_interfaces(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_local_gateway_virtual_interfaces operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.local_gateway_virtual_interfaces.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeManagedPrefixLists
      # @param [Client] client
      # @param [Hash] params (see Client#describe_managed_prefix_lists)
      # @param [Hash] options (see Client#describe_managed_prefix_lists)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_managed_prefix_lists operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_managed_prefix_lists(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_managed_prefix_lists(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_managed_prefix_lists operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.prefix_lists.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMovingAddresses
      # @param [Client] client
      # @param [Hash] params (see Client#describe_moving_addresses)
      # @param [Hash] options (see Client#describe_moving_addresses)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_moving_addresses operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_moving_addresses(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_moving_addresses(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_moving_addresses operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.moving_address_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNatGateways
      # @param [Client] client
      # @param [Hash] params (see Client#describe_nat_gateways)
      # @param [Hash] options (see Client#describe_nat_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_nat_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_nat_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_nat_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_nat_gateways operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.nat_gateways.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNetworkAcls
      # @param [Client] client
      # @param [Hash] params (see Client#describe_network_acls)
      # @param [Hash] options (see Client#describe_network_acls)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_network_acls operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_network_acls(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_network_acls(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_network_acls operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.network_acls.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNetworkInsightsAccessScopeAnalyses
      # @param [Client] client
      # @param [Hash] params (see Client#describe_network_insights_access_scope_analyses)
      # @param [Hash] options (see Client#describe_network_insights_access_scope_analyses)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_network_insights_access_scope_analyses operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_network_insights_access_scope_analyses(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_network_insights_access_scope_analyses(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_network_insights_access_scope_analyses operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.network_insights_access_scope_analyses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNetworkInsightsAccessScopes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_network_insights_access_scopes)
      # @param [Hash] options (see Client#describe_network_insights_access_scopes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_network_insights_access_scopes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_network_insights_access_scopes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_network_insights_access_scopes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_network_insights_access_scopes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.network_insights_access_scopes.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNetworkInsightsAnalyses
      # @param [Client] client
      # @param [Hash] params (see Client#describe_network_insights_analyses)
      # @param [Hash] options (see Client#describe_network_insights_analyses)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_network_insights_analyses operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_network_insights_analyses(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_network_insights_analyses(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_network_insights_analyses operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.network_insights_analyses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNetworkInsightsPaths
      # @param [Client] client
      # @param [Hash] params (see Client#describe_network_insights_paths)
      # @param [Hash] options (see Client#describe_network_insights_paths)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_network_insights_paths operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_network_insights_paths(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_network_insights_paths(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_network_insights_paths operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.network_insights_paths.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNetworkInterfacePermissions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_network_interface_permissions)
      # @param [Hash] options (see Client#describe_network_interface_permissions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_network_interface_permissions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_network_interface_permissions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_network_interface_permissions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_network_interface_permissions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.network_interface_permissions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNetworkInterfaces
      # @param [Client] client
      # @param [Hash] params (see Client#describe_network_interfaces)
      # @param [Hash] options (see Client#describe_network_interfaces)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_network_interfaces operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_network_interfaces(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_network_interfaces(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_network_interfaces operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.network_interfaces.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribePrefixLists
      # @param [Client] client
      # @param [Hash] params (see Client#describe_prefix_lists)
      # @param [Hash] options (see Client#describe_prefix_lists)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_prefix_lists operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_prefix_lists(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_prefix_lists(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_prefix_lists operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.prefix_lists.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribePrincipalIdFormat
      # @param [Client] client
      # @param [Hash] params (see Client#describe_principal_id_format)
      # @param [Hash] options (see Client#describe_principal_id_format)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_principal_id_format operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_principal_id_format(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_principal_id_format(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_principal_id_format operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.principals.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribePublicIpv4Pools
      # @param [Client] client
      # @param [Hash] params (see Client#describe_public_ipv4_pools)
      # @param [Hash] options (see Client#describe_public_ipv4_pools)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_public_ipv4_pools operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_public_ipv4_pools(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_public_ipv4_pools(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_public_ipv4_pools operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.public_ipv4_pools.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReplaceRootVolumeTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replace_root_volume_tasks)
      # @param [Hash] options (see Client#describe_replace_root_volume_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replace_root_volume_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_replace_root_volume_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_replace_root_volume_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_replace_root_volume_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.replace_root_volume_tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReservedInstancesModifications
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_instances_modifications)
      # @param [Hash] options (see Client#describe_reserved_instances_modifications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_instances_modifications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_reserved_instances_modifications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_reserved_instances_modifications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_reserved_instances_modifications operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_instances_modifications.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReservedInstancesOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_instances_offerings)
      # @param [Hash] options (see Client#describe_reserved_instances_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_instances_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_reserved_instances_offerings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_reserved_instances_offerings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_reserved_instances_offerings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_instances_offerings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeRouteTables
      # @param [Client] client
      # @param [Hash] params (see Client#describe_route_tables)
      # @param [Hash] options (see Client#describe_route_tables)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_route_tables operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_route_tables(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_route_tables(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_route_tables operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.route_tables.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeScheduledInstanceAvailability
      # @param [Client] client
      # @param [Hash] params (see Client#describe_scheduled_instance_availability)
      # @param [Hash] options (see Client#describe_scheduled_instance_availability)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_scheduled_instance_availability operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_scheduled_instance_availability(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_scheduled_instance_availability(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_scheduled_instance_availability operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.scheduled_instance_availability_set.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeScheduledInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_scheduled_instances)
      # @param [Hash] options (see Client#describe_scheduled_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_scheduled_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_scheduled_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_scheduled_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_scheduled_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.scheduled_instance_set.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSecurityGroupRules
      # @param [Client] client
      # @param [Hash] params (see Client#describe_security_group_rules)
      # @param [Hash] options (see Client#describe_security_group_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_security_group_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_security_group_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_security_group_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_security_group_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.security_group_rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSecurityGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_security_groups)
      # @param [Hash] options (see Client#describe_security_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_security_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_security_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_security_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_security_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.security_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSnapshots
      # @param [Client] client
      # @param [Hash] params (see Client#describe_snapshots)
      # @param [Hash] options (see Client#describe_snapshots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_snapshots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_snapshots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_snapshots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_snapshots operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.snapshots.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSnapshotTierStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_snapshot_tier_status)
      # @param [Hash] options (see Client#describe_snapshot_tier_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_snapshot_tier_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_snapshot_tier_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_snapshot_tier_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_snapshot_tier_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.snapshot_tier_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSpotFleetRequests
      # @param [Client] client
      # @param [Hash] params (see Client#describe_spot_fleet_requests)
      # @param [Hash] options (see Client#describe_spot_fleet_requests)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_spot_fleet_requests operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_spot_fleet_requests(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_spot_fleet_requests(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_spot_fleet_requests operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.spot_fleet_request_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSpotInstanceRequests
      # @param [Client] client
      # @param [Hash] params (see Client#describe_spot_instance_requests)
      # @param [Hash] options (see Client#describe_spot_instance_requests)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_spot_instance_requests operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_spot_instance_requests(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_spot_instance_requests(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_spot_instance_requests operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.spot_instance_requests.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSpotPriceHistory
      # @param [Client] client
      # @param [Hash] params (see Client#describe_spot_price_history)
      # @param [Hash] options (see Client#describe_spot_price_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_spot_price_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_spot_price_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_spot_price_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_spot_price_history operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.spot_price_history.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeStaleSecurityGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_stale_security_groups)
      # @param [Hash] options (see Client#describe_stale_security_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_stale_security_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_stale_security_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_stale_security_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_stale_security_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.stale_security_group_set.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeStoreImageTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_store_image_tasks)
      # @param [Hash] options (see Client#describe_store_image_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_store_image_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_store_image_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_store_image_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_store_image_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.store_image_task_results.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSubnets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_subnets)
      # @param [Hash] options (see Client#describe_subnets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_subnets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_subnets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_subnets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_subnets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.subnets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTags
      # @param [Client] client
      # @param [Hash] params (see Client#describe_tags)
      # @param [Hash] options (see Client#describe_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_tags operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tags.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTrafficMirrorFilters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_traffic_mirror_filters)
      # @param [Hash] options (see Client#describe_traffic_mirror_filters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_traffic_mirror_filters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_traffic_mirror_filters(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_traffic_mirror_filters(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_traffic_mirror_filters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.traffic_mirror_filters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTrafficMirrorSessions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_traffic_mirror_sessions)
      # @param [Hash] options (see Client#describe_traffic_mirror_sessions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_traffic_mirror_sessions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_traffic_mirror_sessions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_traffic_mirror_sessions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_traffic_mirror_sessions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.traffic_mirror_sessions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTrafficMirrorTargets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_traffic_mirror_targets)
      # @param [Hash] options (see Client#describe_traffic_mirror_targets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_traffic_mirror_targets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_traffic_mirror_targets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_traffic_mirror_targets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_traffic_mirror_targets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.traffic_mirror_targets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGatewayAttachments
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateway_attachments)
      # @param [Hash] options (see Client#describe_transit_gateway_attachments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateway_attachments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateway_attachments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateway_attachments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateway_attachments operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_attachments.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGatewayConnectPeers
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateway_connect_peers)
      # @param [Hash] options (see Client#describe_transit_gateway_connect_peers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateway_connect_peers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateway_connect_peers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateway_connect_peers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateway_connect_peers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_connect_peers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGatewayConnects
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateway_connects)
      # @param [Hash] options (see Client#describe_transit_gateway_connects)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateway_connects operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateway_connects(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateway_connects(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateway_connects operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_connects.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGatewayMulticastDomains
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateway_multicast_domains)
      # @param [Hash] options (see Client#describe_transit_gateway_multicast_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateway_multicast_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateway_multicast_domains(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateway_multicast_domains(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateway_multicast_domains operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_multicast_domains.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGatewayPeeringAttachments
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateway_peering_attachments)
      # @param [Hash] options (see Client#describe_transit_gateway_peering_attachments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateway_peering_attachments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateway_peering_attachments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateway_peering_attachments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateway_peering_attachments operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_peering_attachments.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGatewayRouteTables
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateway_route_tables)
      # @param [Hash] options (see Client#describe_transit_gateway_route_tables)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateway_route_tables operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateway_route_tables(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateway_route_tables(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateway_route_tables operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_route_tables.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGateways
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateways)
      # @param [Hash] options (see Client#describe_transit_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateways operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateways.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTransitGatewayVpcAttachments
      # @param [Client] client
      # @param [Hash] params (see Client#describe_transit_gateway_vpc_attachments)
      # @param [Hash] options (see Client#describe_transit_gateway_vpc_attachments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_transit_gateway_vpc_attachments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_transit_gateway_vpc_attachments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_transit_gateway_vpc_attachments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_transit_gateway_vpc_attachments operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_vpc_attachments.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTrunkInterfaceAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_trunk_interface_associations)
      # @param [Hash] options (see Client#describe_trunk_interface_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_trunk_interface_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_trunk_interface_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_trunk_interface_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_trunk_interface_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.interface_associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVolumes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_volumes)
      # @param [Hash] options (see Client#describe_volumes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_volumes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_volumes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_volumes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_volumes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.volumes.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVolumesModifications
      # @param [Client] client
      # @param [Hash] params (see Client#describe_volumes_modifications)
      # @param [Hash] options (see Client#describe_volumes_modifications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_volumes_modifications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_volumes_modifications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_volumes_modifications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_volumes_modifications operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.volumes_modifications.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVolumeStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_volume_status)
      # @param [Hash] options (see Client#describe_volume_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_volume_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_volume_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_volume_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_volume_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.volume_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcClassicLinkDnsSupport
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpc_classic_link_dns_support)
      # @param [Hash] options (see Client#describe_vpc_classic_link_dns_support)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpc_classic_link_dns_support operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpc_classic_link_dns_support(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpc_classic_link_dns_support(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpc_classic_link_dns_support operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.vpcs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcEndpointConnectionNotifications
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpc_endpoint_connection_notifications)
      # @param [Hash] options (see Client#describe_vpc_endpoint_connection_notifications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpc_endpoint_connection_notifications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpc_endpoint_connection_notifications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpc_endpoint_connection_notifications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpc_endpoint_connection_notifications operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.connection_notification_set.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcEndpointConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpc_endpoint_connections)
      # @param [Hash] options (see Client#describe_vpc_endpoint_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpc_endpoint_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpc_endpoint_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpc_endpoint_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpc_endpoint_connections operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.vpc_endpoint_connections.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpc_endpoints)
      # @param [Hash] options (see Client#describe_vpc_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpc_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpc_endpoints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpc_endpoints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpc_endpoints operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.vpc_endpoints.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcEndpointServiceConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpc_endpoint_service_configurations)
      # @param [Hash] options (see Client#describe_vpc_endpoint_service_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpc_endpoint_service_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpc_endpoint_service_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpc_endpoint_service_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpc_endpoint_service_configurations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.service_configurations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcEndpointServicePermissions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpc_endpoint_service_permissions)
      # @param [Hash] options (see Client#describe_vpc_endpoint_service_permissions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpc_endpoint_service_permissions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpc_endpoint_service_permissions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpc_endpoint_service_permissions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpc_endpoint_service_permissions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.allowed_principals.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcPeeringConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpc_peering_connections)
      # @param [Hash] options (see Client#describe_vpc_peering_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpc_peering_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpc_peering_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpc_peering_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpc_peering_connections operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.vpc_peering_connections.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVpcs
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vpcs)
      # @param [Hash] options (see Client#describe_vpcs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vpcs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_vpcs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_vpcs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_vpcs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.vpcs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetAssociatedIpv6PoolCidrs
      # @param [Client] client
      # @param [Hash] params (see Client#get_associated_ipv6_pool_cidrs)
      # @param [Hash] options (see Client#get_associated_ipv6_pool_cidrs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_associated_ipv6_pool_cidrs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_associated_ipv6_pool_cidrs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_associated_ipv6_pool_cidrs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_associated_ipv6_pool_cidrs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipv6_cidr_associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetGroupsForCapacityReservation
      # @param [Client] client
      # @param [Hash] params (see Client#get_groups_for_capacity_reservation)
      # @param [Hash] options (see Client#get_groups_for_capacity_reservation)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_groups_for_capacity_reservation operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_groups_for_capacity_reservation(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_groups_for_capacity_reservation(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_groups_for_capacity_reservation operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.capacity_reservation_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetInstanceTypesFromInstanceRequirements
      # @param [Client] client
      # @param [Hash] params (see Client#get_instance_types_from_instance_requirements)
      # @param [Hash] options (see Client#get_instance_types_from_instance_requirements)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_instance_types_from_instance_requirements operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_instance_types_from_instance_requirements(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_instance_types_from_instance_requirements(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_instance_types_from_instance_requirements operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_types.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetIpamAddressHistory
      # @param [Client] client
      # @param [Hash] params (see Client#get_ipam_address_history)
      # @param [Hash] options (see Client#get_ipam_address_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_ipam_address_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_ipam_address_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_ipam_address_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_ipam_address_history operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.history_records.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetIpamPoolAllocations
      # @param [Client] client
      # @param [Hash] params (see Client#get_ipam_pool_allocations)
      # @param [Hash] options (see Client#get_ipam_pool_allocations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_ipam_pool_allocations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_ipam_pool_allocations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_ipam_pool_allocations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_ipam_pool_allocations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipam_pool_allocations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetIpamPoolCidrs
      # @param [Client] client
      # @param [Hash] params (see Client#get_ipam_pool_cidrs)
      # @param [Hash] options (see Client#get_ipam_pool_cidrs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_ipam_pool_cidrs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_ipam_pool_cidrs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_ipam_pool_cidrs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_ipam_pool_cidrs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipam_pool_cidrs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetIpamResourceCidrs
      # @param [Client] client
      # @param [Hash] params (see Client#get_ipam_resource_cidrs)
      # @param [Hash] options (see Client#get_ipam_resource_cidrs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_ipam_resource_cidrs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_ipam_resource_cidrs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_ipam_resource_cidrs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_ipam_resource_cidrs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ipam_resource_cidrs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetManagedPrefixListAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_managed_prefix_list_associations)
      # @param [Hash] options (see Client#get_managed_prefix_list_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_managed_prefix_list_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_managed_prefix_list_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_managed_prefix_list_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_managed_prefix_list_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.prefix_list_associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetManagedPrefixListEntries
      # @param [Client] client
      # @param [Hash] params (see Client#get_managed_prefix_list_entries)
      # @param [Hash] options (see Client#get_managed_prefix_list_entries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_managed_prefix_list_entries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_managed_prefix_list_entries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_managed_prefix_list_entries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_managed_prefix_list_entries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.entries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetSpotPlacementScores
      # @param [Client] client
      # @param [Hash] params (see Client#get_spot_placement_scores)
      # @param [Hash] options (see Client#get_spot_placement_scores)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_spot_placement_scores operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_spot_placement_scores(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_spot_placement_scores(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_spot_placement_scores operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.spot_placement_scores.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTransitGatewayAttachmentPropagations
      # @param [Client] client
      # @param [Hash] params (see Client#get_transit_gateway_attachment_propagations)
      # @param [Hash] options (see Client#get_transit_gateway_attachment_propagations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_transit_gateway_attachment_propagations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_transit_gateway_attachment_propagations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_transit_gateway_attachment_propagations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_transit_gateway_attachment_propagations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_attachment_propagations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTransitGatewayMulticastDomainAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_transit_gateway_multicast_domain_associations)
      # @param [Hash] options (see Client#get_transit_gateway_multicast_domain_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_transit_gateway_multicast_domain_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_transit_gateway_multicast_domain_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_transit_gateway_multicast_domain_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_transit_gateway_multicast_domain_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.multicast_domain_associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTransitGatewayPrefixListReferences
      # @param [Client] client
      # @param [Hash] params (see Client#get_transit_gateway_prefix_list_references)
      # @param [Hash] options (see Client#get_transit_gateway_prefix_list_references)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_transit_gateway_prefix_list_references operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_transit_gateway_prefix_list_references(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_transit_gateway_prefix_list_references(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_transit_gateway_prefix_list_references operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_prefix_list_references.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTransitGatewayRouteTableAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_transit_gateway_route_table_associations)
      # @param [Hash] options (see Client#get_transit_gateway_route_table_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_transit_gateway_route_table_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_transit_gateway_route_table_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_transit_gateway_route_table_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_transit_gateway_route_table_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTransitGatewayRouteTablePropagations
      # @param [Client] client
      # @param [Hash] params (see Client#get_transit_gateway_route_table_propagations)
      # @param [Hash] options (see Client#get_transit_gateway_route_table_propagations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_transit_gateway_route_table_propagations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_transit_gateway_route_table_propagations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_transit_gateway_route_table_propagations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_transit_gateway_route_table_propagations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transit_gateway_route_table_propagations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetVpnConnectionDeviceTypes
      # @param [Client] client
      # @param [Hash] params (see Client#get_vpn_connection_device_types)
      # @param [Hash] options (see Client#get_vpn_connection_device_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_vpn_connection_device_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_vpn_connection_device_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_vpn_connection_device_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_vpn_connection_device_types operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.vpn_connection_device_types.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSnapshotsInRecycleBin
      # @param [Client] client
      # @param [Hash] params (see Client#list_snapshots_in_recycle_bin)
      # @param [Hash] options (see Client#list_snapshots_in_recycle_bin)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_snapshots_in_recycle_bin operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_snapshots_in_recycle_bin(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_snapshots_in_recycle_bin(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_snapshots_in_recycle_bin operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.snapshots.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class SearchLocalGatewayRoutes
      # @param [Client] client
      # @param [Hash] params (see Client#search_local_gateway_routes)
      # @param [Hash] options (see Client#search_local_gateway_routes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_local_gateway_routes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_local_gateway_routes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_local_gateway_routes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the search_local_gateway_routes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.routes.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class SearchTransitGatewayMulticastGroups
      # @param [Client] client
      # @param [Hash] params (see Client#search_transit_gateway_multicast_groups)
      # @param [Hash] options (see Client#search_transit_gateway_multicast_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_transit_gateway_multicast_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_transit_gateway_multicast_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_transit_gateway_multicast_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the search_transit_gateway_multicast_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.multicast_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
