# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Drs
  module Paginators

    class DescribeJobLogItems
      # @param [Client] client
      # @param [Hash] params (see Client#describe_job_log_items)
      # @param [Hash] options (see Client#describe_job_log_items)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_job_log_items operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_job_log_items(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_job_log_items(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_job_log_items operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeJobs
      # @param [Client] client
      # @param [Hash] params (see Client#describe_jobs)
      # @param [Hash] options (see Client#describe_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeRecoveryInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_recovery_instances)
      # @param [Hash] options (see Client#describe_recovery_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_recovery_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_recovery_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_recovery_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_recovery_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeRecoverySnapshots
      # @param [Client] client
      # @param [Hash] params (see Client#describe_recovery_snapshots)
      # @param [Hash] options (see Client#describe_recovery_snapshots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_recovery_snapshots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_recovery_snapshots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_recovery_snapshots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_recovery_snapshots operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeReplicationConfigurationTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_configuration_templates)
      # @param [Hash] options (see Client#describe_replication_configuration_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_configuration_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_replication_configuration_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_replication_configuration_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_replication_configuration_templates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSourceServers
      # @param [Client] client
      # @param [Hash] params (see Client#describe_source_servers)
      # @param [Hash] options (see Client#describe_source_servers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_source_servers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_source_servers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_source_servers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_source_servers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListExtensibleSourceServers
      # @param [Client] client
      # @param [Hash] params (see Client#list_extensible_source_servers)
      # @param [Hash] options (see Client#list_extensible_source_servers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_extensible_source_servers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_extensible_source_servers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_extensible_source_servers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_extensible_source_servers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListStagingAccounts
      # @param [Client] client
      # @param [Hash] params (see Client#list_staging_accounts)
      # @param [Hash] options (see Client#list_staging_accounts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_staging_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_staging_accounts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_staging_accounts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_staging_accounts operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.accounts.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
