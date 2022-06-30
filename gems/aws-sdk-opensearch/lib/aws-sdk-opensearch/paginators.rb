# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpenSearch
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

    class DescribeInboundConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_inbound_connections)
      # @param [Hash] options (see Client#describe_inbound_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_inbound_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_inbound_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_inbound_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeOutboundConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_outbound_connections)
      # @param [Hash] options (see Client#describe_outbound_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_outbound_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_outbound_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_outbound_connections(params, @options)
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

    class DescribeReservedInstanceOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_instance_offerings)
      # @param [Hash] options (see Client#describe_reserved_instance_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_instance_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_reserved_instance_offerings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_reserved_instance_offerings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeReservedInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_instances)
      # @param [Hash] options (see Client#describe_reserved_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_reserved_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_reserved_instances(params, @options)
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

    class ListInstanceTypeDetails
      # @param [Client] client
      # @param [Hash] params (see Client#list_instance_type_details)
      # @param [Hash] options (see Client#list_instance_type_details)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_instance_type_details operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_instance_type_details(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_instance_type_details(params, @options)
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

    class ListVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_versions)
      # @param [Hash] options (see Client#list_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
