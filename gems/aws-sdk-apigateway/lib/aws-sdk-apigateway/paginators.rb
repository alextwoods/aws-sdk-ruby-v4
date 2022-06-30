# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::APIGateway
  module Paginators

    class GetApiKeys
      # @param [Client] client
      # @param [Hash] params (see Client#get_api_keys)
      # @param [Hash] options (see Client#get_api_keys)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_api_keys operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_api_keys(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_api_keys(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_api_keys operation.
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

    class GetBasePathMappings
      # @param [Client] client
      # @param [Hash] params (see Client#get_base_path_mappings)
      # @param [Hash] options (see Client#get_base_path_mappings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_base_path_mappings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_base_path_mappings(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_base_path_mappings(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_base_path_mappings operation.
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

    class GetClientCertificates
      # @param [Client] client
      # @param [Hash] params (see Client#get_client_certificates)
      # @param [Hash] options (see Client#get_client_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_client_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_client_certificates(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_client_certificates(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_client_certificates operation.
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

    class GetDeployments
      # @param [Client] client
      # @param [Hash] params (see Client#get_deployments)
      # @param [Hash] options (see Client#get_deployments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_deployments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_deployments(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_deployments(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_deployments operation.
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

    class GetDomainNames
      # @param [Client] client
      # @param [Hash] params (see Client#get_domain_names)
      # @param [Hash] options (see Client#get_domain_names)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_domain_names operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_domain_names(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_domain_names(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_domain_names operation.
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

    class GetModels
      # @param [Client] client
      # @param [Hash] params (see Client#get_models)
      # @param [Hash] options (see Client#get_models)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_models operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_models(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_models(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_models operation.
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

    class GetResources
      # @param [Client] client
      # @param [Hash] params (see Client#get_resources)
      # @param [Hash] options (see Client#get_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_resources(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_resources(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_resources operation.
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

    class GetRestApis
      # @param [Client] client
      # @param [Hash] params (see Client#get_rest_apis)
      # @param [Hash] options (see Client#get_rest_apis)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_rest_apis operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_rest_apis(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_rest_apis(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_rest_apis operation.
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

    class GetUsage
      # @param [Client] client
      # @param [Hash] params (see Client#get_usage)
      # @param [Hash] options (see Client#get_usage)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_usage operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_usage(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_usage(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_usage operation.
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

    class GetUsagePlanKeys
      # @param [Client] client
      # @param [Hash] params (see Client#get_usage_plan_keys)
      # @param [Hash] options (see Client#get_usage_plan_keys)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_usage_plan_keys operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_usage_plan_keys(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_usage_plan_keys(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_usage_plan_keys operation.
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

    class GetUsagePlans
      # @param [Client] client
      # @param [Hash] params (see Client#get_usage_plans)
      # @param [Hash] options (see Client#get_usage_plans)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_usage_plans operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_usage_plans(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_usage_plans(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_usage_plans operation.
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

    class GetVpcLinks
      # @param [Client] client
      # @param [Hash] params (see Client#get_vpc_links)
      # @param [Hash] options (see Client#get_vpc_links)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_vpc_links operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:position]
          response = @client.get_vpc_links(params, @options)
          e.yield(response)
          output_token = response.position

          until output_token.nil? || @prev_token == output_token
            params = params.merge(position: output_token)
            response = @client.get_vpc_links(params, @options)
            e.yield(response)
            output_token = response.position
          end
        end
      end

      # Iterate all items from pages in the get_vpc_links operation.
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

  end
end
