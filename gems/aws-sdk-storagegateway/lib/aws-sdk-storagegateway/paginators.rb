# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::StorageGateway
  module Paginators

    class DescribeTapeArchives
      # @param [Client] client
      # @param [Hash] params (see Client#describe_tape_archives)
      # @param [Hash] options (see Client#describe_tape_archives)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_tape_archives operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_tape_archives(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_tape_archives(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_tape_archives operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tape_archives.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTapeRecoveryPoints
      # @param [Client] client
      # @param [Hash] params (see Client#describe_tape_recovery_points)
      # @param [Hash] options (see Client#describe_tape_recovery_points)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_tape_recovery_points operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_tape_recovery_points(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_tape_recovery_points(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_tape_recovery_points operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tape_recovery_point_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTapes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_tapes)
      # @param [Hash] options (see Client#describe_tapes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_tapes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_tapes(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_tapes(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_tapes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tapes.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeVTLDevices
      # @param [Client] client
      # @param [Hash] params (see Client#describe_vtl_devices)
      # @param [Hash] options (see Client#describe_vtl_devices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_vtl_devices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_vtl_devices(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_vtl_devices(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_vtl_devices operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.vtl_devices.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFileShares
      # @param [Client] client
      # @param [Hash] params (see Client#list_file_shares)
      # @param [Hash] options (see Client#list_file_shares)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_file_shares operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_file_shares(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_file_shares(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_file_shares operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.file_share_info_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFileSystemAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_file_system_associations)
      # @param [Hash] options (see Client#list_file_system_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_file_system_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_file_system_associations(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_file_system_associations(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_file_system_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.file_system_association_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListGateways
      # @param [Client] client
      # @param [Hash] params (see Client#list_gateways)
      # @param [Hash] options (see Client#list_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_gateways(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_gateways(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_gateways operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.gateways.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTagsForResource
      # @param [Client] client
      # @param [Hash] params (see Client#list_tags_for_resource)
      # @param [Hash] options (see Client#list_tags_for_resource)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tags_for_resource operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_tags_for_resource(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_tags_for_resource(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_tags_for_resource operation.
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

    class ListTapePools
      # @param [Client] client
      # @param [Hash] params (see Client#list_tape_pools)
      # @param [Hash] options (see Client#list_tape_pools)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tape_pools operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_tape_pools(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_tape_pools(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_tape_pools operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pool_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTapes
      # @param [Client] client
      # @param [Hash] params (see Client#list_tapes)
      # @param [Hash] options (see Client#list_tapes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tapes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_tapes(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_tapes(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_tapes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tape_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListVolumes
      # @param [Client] client
      # @param [Hash] params (see Client#list_volumes)
      # @param [Hash] options (see Client#list_volumes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_volumes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_volumes(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_volumes(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_volumes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.volume_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
