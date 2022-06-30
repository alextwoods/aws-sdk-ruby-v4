# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpaces
  module Paginators

    class DescribeWorkspaceBundles
      # @param [Client] client
      # @param [Hash] params (see Client#describe_workspace_bundles)
      # @param [Hash] options (see Client#describe_workspace_bundles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_workspace_bundles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_workspace_bundles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_workspace_bundles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_workspace_bundles operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.bundles.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeWorkspaceDirectories
      # @param [Client] client
      # @param [Hash] params (see Client#describe_workspace_directories)
      # @param [Hash] options (see Client#describe_workspace_directories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_workspace_directories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_workspace_directories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_workspace_directories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_workspace_directories operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.directories.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeWorkspaces
      # @param [Client] client
      # @param [Hash] params (see Client#describe_workspaces)
      # @param [Hash] options (see Client#describe_workspaces)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_workspaces operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_workspaces(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_workspaces(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_workspaces operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.workspaces.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
