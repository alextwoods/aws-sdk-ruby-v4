# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDS
  module Paginators

    class DescribeCertificates
      # @param [Client] client
      # @param [Hash] params (see Client#describe_certificates)
      # @param [Hash] options (see Client#describe_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_certificates(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_certificates(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_certificates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.certificates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBClusterBacktracks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_cluster_backtracks)
      # @param [Hash] options (see Client#describe_db_cluster_backtracks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_cluster_backtracks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_cluster_backtracks(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_cluster_backtracks(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_cluster_backtracks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_cluster_backtracks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBClusterEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_cluster_endpoints)
      # @param [Hash] options (see Client#describe_db_cluster_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_cluster_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_cluster_endpoints(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_cluster_endpoints(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_cluster_endpoints operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_cluster_endpoints.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBClusterParameterGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_cluster_parameter_groups)
      # @param [Hash] options (see Client#describe_db_cluster_parameter_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_cluster_parameter_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_cluster_parameter_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_cluster_parameter_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_cluster_parameter_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_cluster_parameter_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBClusterParameters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_cluster_parameters)
      # @param [Hash] options (see Client#describe_db_cluster_parameters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_cluster_parameters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_cluster_parameters(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_cluster_parameters(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_cluster_parameters operation.
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

    class DescribeDBClusters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_clusters)
      # @param [Hash] options (see Client#describe_db_clusters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_clusters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_clusters(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_clusters(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_clusters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_clusters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBClusterSnapshots
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_cluster_snapshots)
      # @param [Hash] options (see Client#describe_db_cluster_snapshots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_cluster_snapshots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_cluster_snapshots(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_cluster_snapshots(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_cluster_snapshots operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_cluster_snapshots.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBEngineVersions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_engine_versions)
      # @param [Hash] options (see Client#describe_db_engine_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_engine_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_engine_versions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_engine_versions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_engine_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_engine_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBInstanceAutomatedBackups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_instance_automated_backups)
      # @param [Hash] options (see Client#describe_db_instance_automated_backups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_instance_automated_backups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_instance_automated_backups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_instance_automated_backups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_instance_automated_backups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_instance_automated_backups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_instances)
      # @param [Hash] options (see Client#describe_db_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_instances(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_instances(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_instances.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBLogFiles
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_log_files)
      # @param [Hash] options (see Client#describe_db_log_files)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_log_files operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_log_files(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_log_files(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_log_files operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.describe_db_log_files.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBParameterGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_parameter_groups)
      # @param [Hash] options (see Client#describe_db_parameter_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_parameter_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_parameter_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_parameter_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_parameter_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_parameter_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBParameters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_parameters)
      # @param [Hash] options (see Client#describe_db_parameters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_parameters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_parameters(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_parameters(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_parameters operation.
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

    class DescribeDBProxies
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_proxies)
      # @param [Hash] options (see Client#describe_db_proxies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_proxies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_proxies(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_proxies(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_proxies operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_proxies.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBProxyEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_proxy_endpoints)
      # @param [Hash] options (see Client#describe_db_proxy_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_proxy_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_proxy_endpoints(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_proxy_endpoints(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_proxy_endpoints operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_proxy_endpoints.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBProxyTargetGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_proxy_target_groups)
      # @param [Hash] options (see Client#describe_db_proxy_target_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_proxy_target_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_proxy_target_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_proxy_target_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_proxy_target_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.target_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBProxyTargets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_proxy_targets)
      # @param [Hash] options (see Client#describe_db_proxy_targets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_proxy_targets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_proxy_targets(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_proxy_targets(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_proxy_targets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.targets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBSecurityGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_security_groups)
      # @param [Hash] options (see Client#describe_db_security_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_security_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_security_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_security_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_security_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_security_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBSnapshots
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_snapshots)
      # @param [Hash] options (see Client#describe_db_snapshots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_snapshots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_snapshots(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_snapshots(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_snapshots operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_snapshots.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeDBSubnetGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_db_subnet_groups)
      # @param [Hash] options (see Client#describe_db_subnet_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_db_subnet_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_db_subnet_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_db_subnet_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_db_subnet_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.db_subnet_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEngineDefaultParameters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_engine_default_parameters)
      # @param [Hash] options (see Client#describe_engine_default_parameters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_engine_default_parameters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_engine_default_parameters(params, @options)
          e.yield(response)
          output_token = response.engine_defaults&.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_engine_default_parameters(params, @options)
            e.yield(response)
            output_token = response.engine_defaults&.marker
          end
        end
      end

      # Iterate all items from pages in the describe_engine_default_parameters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.engine_defaults&.parameters.each do |item|
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

    class DescribeExportTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_export_tasks)
      # @param [Hash] options (see Client#describe_export_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_export_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_export_tasks(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_export_tasks(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_export_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.export_tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeGlobalClusters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_global_clusters)
      # @param [Hash] options (see Client#describe_global_clusters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_global_clusters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_global_clusters(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_global_clusters(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_global_clusters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.global_clusters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOptionGroupOptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_option_group_options)
      # @param [Hash] options (see Client#describe_option_group_options)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_option_group_options operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_option_group_options(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_option_group_options(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_option_group_options operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.option_group_options.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOptionGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_option_groups)
      # @param [Hash] options (see Client#describe_option_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_option_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_option_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_option_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_option_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.option_groups_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOrderableDBInstanceOptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_orderable_db_instance_options)
      # @param [Hash] options (see Client#describe_orderable_db_instance_options)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_orderable_db_instance_options operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_orderable_db_instance_options(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_orderable_db_instance_options(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_orderable_db_instance_options operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.orderable_db_instance_options.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribePendingMaintenanceActions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_pending_maintenance_actions)
      # @param [Hash] options (see Client#describe_pending_maintenance_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_pending_maintenance_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_pending_maintenance_actions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_pending_maintenance_actions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_pending_maintenance_actions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pending_maintenance_actions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReservedDBInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_db_instances)
      # @param [Hash] options (see Client#describe_reserved_db_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_db_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_reserved_db_instances(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_reserved_db_instances(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_reserved_db_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_db_instances.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReservedDBInstancesOfferings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_reserved_db_instances_offerings)
      # @param [Hash] options (see Client#describe_reserved_db_instances_offerings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_reserved_db_instances_offerings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_reserved_db_instances_offerings(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_reserved_db_instances_offerings(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_reserved_db_instances_offerings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.reserved_db_instances_offerings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSourceRegions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_source_regions)
      # @param [Hash] options (see Client#describe_source_regions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_source_regions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_source_regions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_source_regions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_source_regions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.source_regions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DownloadDBLogFilePortion
      # @param [Client] client
      # @param [Hash] params (see Client#download_db_log_file_portion)
      # @param [Hash] options (see Client#download_db_log_file_portion)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the download_db_log_file_portion operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.download_db_log_file_portion(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.download_db_log_file_portion(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

  end
end
