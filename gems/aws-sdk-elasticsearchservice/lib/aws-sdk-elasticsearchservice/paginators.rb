# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticsearchService
  module Paginators

    class DescribeDomainAutoTunes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_domain_auto_tunes)
      # @param [Hash] options (see Client#describe_domain_auto_tunes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_domain_auto_tunes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_domain_auto_tunes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_domain_auto_tunes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeInboundCrossClusterSearchConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_inbound_cross_cluster_search_connections)
      # @param [Hash] options (see Client#describe_inbound_cross_cluster_search_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_inbound_cross_cluster_search_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_inbound_cross_cluster_search_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_inbound_cross_cluster_search_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeOutboundCrossClusterSearchConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_outbound_cross_cluster_search_connections)
      # @param [Hash] options (see Client#describe_outbound_cross_cluster_search_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_outbound_cross_cluster_search_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_outbound_cross_cluster_search_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_outbound_cross_cluster_search_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribePackages
      # @param [Client] client
      # @param [Hash] params (see Client#describe_packages)
      # @param [Hash] options (see Client#describe_packages)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_packages operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_packages(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_packages(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeReservedElasticsearchInstanceOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_elasticsearch_instance_offerings)
      # @param [Hash] options (see Client#describe_reserved_elasticsearch_instance_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_elasticsearch_instance_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_reserved_elasticsearch_instance_offerings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_reserved_elasticsearch_instance_offerings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeReservedElasticsearchInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_elasticsearch_instances)
      # @param [Hash] options (see Client#describe_reserved_elasticsearch_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_elasticsearch_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_reserved_elasticsearch_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_reserved_elasticsearch_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetPackageVersionHistory
      # @param [Client] client
      # @param [Hash] params (see Client#get_package_version_history)
      # @param [Hash] options (see Client#get_package_version_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_package_version_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_package_version_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_package_version_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetUpgradeHistory
      # @param [Client] client
      # @param [Hash] params (see Client#get_upgrade_history)
      # @param [Hash] options (see Client#get_upgrade_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_upgrade_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_upgrade_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_upgrade_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDomainsForPackage
      # @param [Client] client
      # @param [Hash] params (see Client#list_domains_for_package)
      # @param [Hash] options (see Client#list_domains_for_package)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_domains_for_package operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_domains_for_package(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_domains_for_package(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListElasticsearchInstanceTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_elasticsearch_instance_types)
      # @param [Hash] options (see Client#list_elasticsearch_instance_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_elasticsearch_instance_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_elasticsearch_instance_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_elasticsearch_instance_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListElasticsearchVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_elasticsearch_versions)
      # @param [Hash] options (see Client#list_elasticsearch_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_elasticsearch_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_elasticsearch_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_elasticsearch_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPackagesForDomain
      # @param [Client] client
      # @param [Hash] params (see Client#list_packages_for_domain)
      # @param [Hash] options (see Client#list_packages_for_domain)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_packages_for_domain operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_packages_for_domain(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_packages_for_domain(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
