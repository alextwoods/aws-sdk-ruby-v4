# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Redshift
  module Paginators

    class DescribeClusterDbRevisions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_db_revisions)
      # @param [Hash] options (see Client#describe_cluster_db_revisions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_db_revisions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_db_revisions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_db_revisions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_db_revisions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.cluster_db_revisions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClusterParameterGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_parameter_groups)
      # @param [Hash] options (see Client#describe_cluster_parameter_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_parameter_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_parameter_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_parameter_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_parameter_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.parameter_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClusterParameters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_parameters)
      # @param [Hash] options (see Client#describe_cluster_parameters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_parameters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_parameters(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_parameters(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_parameters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.parameters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClusters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_clusters)
      # @param [Hash] options (see Client#describe_clusters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_clusters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_clusters(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_clusters(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_clusters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.clusters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClusterSecurityGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_security_groups)
      # @param [Hash] options (see Client#describe_cluster_security_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_security_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_security_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_security_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_security_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.cluster_security_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClusterSnapshots
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_snapshots)
      # @param [Hash] options (see Client#describe_cluster_snapshots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_snapshots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_snapshots(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_snapshots(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_snapshots operation.
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

    class DescribeClusterSubnetGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_subnet_groups)
      # @param [Hash] options (see Client#describe_cluster_subnet_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_subnet_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_subnet_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_subnet_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_subnet_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.cluster_subnet_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClusterTracks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_tracks)
      # @param [Hash] options (see Client#describe_cluster_tracks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_tracks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_tracks(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_tracks(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_tracks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.maintenance_tracks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeClusterVersions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_cluster_versions)
      # @param [Hash] options (see Client#describe_cluster_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_cluster_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_cluster_versions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_cluster_versions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_cluster_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.cluster_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDataShares
      # @param [Client] client
      # @param [Hash] params (see Client#describe_data_shares)
      # @param [Hash] options (see Client#describe_data_shares)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_data_shares operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_data_shares(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_data_shares(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_data_shares operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data_shares.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDataSharesForConsumer
      # @param [Client] client
      # @param [Hash] params (see Client#describe_data_shares_for_consumer)
      # @param [Hash] options (see Client#describe_data_shares_for_consumer)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_data_shares_for_consumer operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_data_shares_for_consumer(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_data_shares_for_consumer(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_data_shares_for_consumer operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data_shares.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDataSharesForProducer
      # @param [Client] client
      # @param [Hash] params (see Client#describe_data_shares_for_producer)
      # @param [Hash] options (see Client#describe_data_shares_for_producer)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_data_shares_for_producer operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_data_shares_for_producer(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_data_shares_for_producer(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_data_shares_for_producer operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data_shares.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDefaultClusterParameters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_default_cluster_parameters)
      # @param [Hash] options (see Client#describe_default_cluster_parameters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_default_cluster_parameters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_default_cluster_parameters(params, @options)
          e.yield(response)
          output_token = response.default_cluster_parameters&.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_default_cluster_parameters(params, @options)
            e.yield(response)
            output_token = response.default_cluster_parameters&.marker
          end
        end
      end

      # Iterate all items from pages in the describe_default_cluster_parameters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.default_cluster_parameters&.parameters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEndpointAccess
      # @param [Client] client
      # @param [Hash] params (see Client#describe_endpoint_access)
      # @param [Hash] options (see Client#describe_endpoint_access)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_endpoint_access operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_endpoint_access(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_endpoint_access(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_endpoint_access operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.endpoint_access_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEndpointAuthorization
      # @param [Client] client
      # @param [Hash] params (see Client#describe_endpoint_authorization)
      # @param [Hash] options (see Client#describe_endpoint_authorization)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_endpoint_authorization operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_endpoint_authorization(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_endpoint_authorization(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_endpoint_authorization operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.endpoint_authorization_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEvents
      # @param [Client] client
      # @param [Hash] params (see Client#describe_events)
      # @param [Hash] options (see Client#describe_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_events(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_events(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_events operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.events.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEventSubscriptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_event_subscriptions)
      # @param [Hash] options (see Client#describe_event_subscriptions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_event_subscriptions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_event_subscriptions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_event_subscriptions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_event_subscriptions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.event_subscriptions_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeHsmClientCertificates
      # @param [Client] client
      # @param [Hash] params (see Client#describe_hsm_client_certificates)
      # @param [Hash] options (see Client#describe_hsm_client_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_hsm_client_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_hsm_client_certificates(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_hsm_client_certificates(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_hsm_client_certificates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.hsm_client_certificates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeHsmConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_hsm_configurations)
      # @param [Hash] options (see Client#describe_hsm_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_hsm_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_hsm_configurations(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_hsm_configurations(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_hsm_configurations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.hsm_configurations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNodeConfigurationOptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_node_configuration_options)
      # @param [Hash] options (see Client#describe_node_configuration_options)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_node_configuration_options operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_node_configuration_options(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_node_configuration_options(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_node_configuration_options operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.node_configuration_option_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOrderableClusterOptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_orderable_cluster_options)
      # @param [Hash] options (see Client#describe_orderable_cluster_options)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_orderable_cluster_options operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_orderable_cluster_options(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_orderable_cluster_options(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_orderable_cluster_options operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.orderable_cluster_options.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReservedNodeExchangeStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_node_exchange_status)
      # @param [Hash] options (see Client#describe_reserved_node_exchange_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_node_exchange_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_reserved_node_exchange_status(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_reserved_node_exchange_status(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_reserved_node_exchange_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_node_exchange_status_details.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReservedNodeOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_node_offerings)
      # @param [Hash] options (see Client#describe_reserved_node_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_node_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_reserved_node_offerings(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_reserved_node_offerings(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_reserved_node_offerings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_node_offerings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReservedNodes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_nodes)
      # @param [Hash] options (see Client#describe_reserved_nodes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_nodes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_reserved_nodes(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_reserved_nodes(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_reserved_nodes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_nodes.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeScheduledActions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_scheduled_actions)
      # @param [Hash] options (see Client#describe_scheduled_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_scheduled_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_scheduled_actions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_scheduled_actions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_scheduled_actions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.scheduled_actions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSnapshotCopyGrants
      # @param [Client] client
      # @param [Hash] params (see Client#describe_snapshot_copy_grants)
      # @param [Hash] options (see Client#describe_snapshot_copy_grants)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_snapshot_copy_grants operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_snapshot_copy_grants(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_snapshot_copy_grants(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_snapshot_copy_grants operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.snapshot_copy_grants.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSnapshotSchedules
      # @param [Client] client
      # @param [Hash] params (see Client#describe_snapshot_schedules)
      # @param [Hash] options (see Client#describe_snapshot_schedules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_snapshot_schedules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_snapshot_schedules(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_snapshot_schedules(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_snapshot_schedules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.snapshot_schedules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTableRestoreStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_table_restore_status)
      # @param [Hash] options (see Client#describe_table_restore_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_table_restore_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_table_restore_status(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_table_restore_status(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_table_restore_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.table_restore_status_details.each do |item|
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
          @prev_token = params[:marker]
          response = @client.describe_tags(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_tags(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_tags operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tagged_resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeUsageLimits
      # @param [Client] client
      # @param [Hash] params (see Client#describe_usage_limits)
      # @param [Hash] options (see Client#describe_usage_limits)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_usage_limits operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_usage_limits(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_usage_limits(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_usage_limits operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.usage_limits.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetReservedNodeExchangeConfigurationOptions
      # @param [Client] client
      # @param [Hash] params (see Client#get_reserved_node_exchange_configuration_options)
      # @param [Hash] options (see Client#get_reserved_node_exchange_configuration_options)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_reserved_node_exchange_configuration_options operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.get_reserved_node_exchange_configuration_options(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.get_reserved_node_exchange_configuration_options(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the get_reserved_node_exchange_configuration_options operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_node_configuration_option_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetReservedNodeExchangeOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#get_reserved_node_exchange_offerings)
      # @param [Hash] options (see Client#get_reserved_node_exchange_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_reserved_node_exchange_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.get_reserved_node_exchange_offerings(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.get_reserved_node_exchange_offerings(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the get_reserved_node_exchange_offerings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_node_offerings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
