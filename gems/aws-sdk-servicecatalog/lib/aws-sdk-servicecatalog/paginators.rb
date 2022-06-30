# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalog
  module Paginators

    class DescribePortfolioShares
      # @param [Client] client
      # @param [Hash] params (see Client#describe_portfolio_shares)
      # @param [Hash] options (see Client#describe_portfolio_shares)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_portfolio_shares operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.describe_portfolio_shares(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.describe_portfolio_shares(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class GetProvisionedProductOutputs
      # @param [Client] client
      # @param [Hash] params (see Client#get_provisioned_product_outputs)
      # @param [Hash] options (see Client#get_provisioned_product_outputs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_provisioned_product_outputs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.get_provisioned_product_outputs(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.get_provisioned_product_outputs(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListAcceptedPortfolioShares
      # @param [Client] client
      # @param [Hash] params (see Client#list_accepted_portfolio_shares)
      # @param [Hash] options (see Client#list_accepted_portfolio_shares)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_accepted_portfolio_shares operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_accepted_portfolio_shares(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_accepted_portfolio_shares(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListBudgetsForResource
      # @param [Client] client
      # @param [Hash] params (see Client#list_budgets_for_resource)
      # @param [Hash] options (see Client#list_budgets_for_resource)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_budgets_for_resource operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_budgets_for_resource(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_budgets_for_resource(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListConstraintsForPortfolio
      # @param [Client] client
      # @param [Hash] params (see Client#list_constraints_for_portfolio)
      # @param [Hash] options (see Client#list_constraints_for_portfolio)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_constraints_for_portfolio operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_constraints_for_portfolio(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_constraints_for_portfolio(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListLaunchPaths
      # @param [Client] client
      # @param [Hash] params (see Client#list_launch_paths)
      # @param [Hash] options (see Client#list_launch_paths)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_launch_paths operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_launch_paths(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_launch_paths(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListOrganizationPortfolioAccess
      # @param [Client] client
      # @param [Hash] params (see Client#list_organization_portfolio_access)
      # @param [Hash] options (see Client#list_organization_portfolio_access)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_organization_portfolio_access operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_organization_portfolio_access(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_organization_portfolio_access(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListPortfolioAccess
      # @param [Client] client
      # @param [Hash] params (see Client#list_portfolio_access)
      # @param [Hash] options (see Client#list_portfolio_access)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_portfolio_access operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_portfolio_access(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_portfolio_access(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListPortfolios
      # @param [Client] client
      # @param [Hash] params (see Client#list_portfolios)
      # @param [Hash] options (see Client#list_portfolios)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_portfolios operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_portfolios(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_portfolios(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListPortfoliosForProduct
      # @param [Client] client
      # @param [Hash] params (see Client#list_portfolios_for_product)
      # @param [Hash] options (see Client#list_portfolios_for_product)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_portfolios_for_product operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_portfolios_for_product(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_portfolios_for_product(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListPrincipalsForPortfolio
      # @param [Client] client
      # @param [Hash] params (see Client#list_principals_for_portfolio)
      # @param [Hash] options (see Client#list_principals_for_portfolio)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_principals_for_portfolio operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_principals_for_portfolio(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_principals_for_portfolio(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListProvisioningArtifactsForServiceAction
      # @param [Client] client
      # @param [Hash] params (see Client#list_provisioning_artifacts_for_service_action)
      # @param [Hash] options (see Client#list_provisioning_artifacts_for_service_action)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_provisioning_artifacts_for_service_action operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_provisioning_artifacts_for_service_action(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_provisioning_artifacts_for_service_action(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListResourcesForTagOption
      # @param [Client] client
      # @param [Hash] params (see Client#list_resources_for_tag_option)
      # @param [Hash] options (see Client#list_resources_for_tag_option)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resources_for_tag_option operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_resources_for_tag_option(params, @options)
          e.yield(response)
          output_token = response.page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_resources_for_tag_option(params, @options)
            e.yield(response)
            output_token = response.page_token
          end
        end
      end
    end

    class ListServiceActions
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_actions)
      # @param [Hash] options (see Client#list_service_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_service_actions(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_service_actions(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListServiceActionsForProvisioningArtifact
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_actions_for_provisioning_artifact)
      # @param [Hash] options (see Client#list_service_actions_for_provisioning_artifact)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_actions_for_provisioning_artifact operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_service_actions_for_provisioning_artifact(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_service_actions_for_provisioning_artifact(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class ListTagOptions
      # @param [Client] client
      # @param [Hash] params (see Client#list_tag_options)
      # @param [Hash] options (see Client#list_tag_options)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tag_options operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_tag_options(params, @options)
          e.yield(response)
          output_token = response.page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_tag_options(params, @options)
            e.yield(response)
            output_token = response.page_token
          end
        end
      end
    end

    class SearchProducts
      # @param [Client] client
      # @param [Hash] params (see Client#search_products)
      # @param [Hash] options (see Client#search_products)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_products operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.search_products(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.search_products(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class SearchProductsAsAdmin
      # @param [Client] client
      # @param [Hash] params (see Client#search_products_as_admin)
      # @param [Hash] options (see Client#search_products_as_admin)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_products_as_admin operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.search_products_as_admin(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.search_products_as_admin(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

    class SearchProvisionedProducts
      # @param [Client] client
      # @param [Hash] params (see Client#search_provisioned_products)
      # @param [Hash] options (see Client#search_provisioned_products)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_provisioned_products operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.search_provisioned_products(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.search_provisioned_products(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end
    end

  end
end
