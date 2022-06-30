# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Organizations
  module Paginators

    class ListAccounts
      # @param [Client] client
      # @param [Hash] params (see Client#list_accounts)
      # @param [Hash] options (see Client#list_accounts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_accounts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_accounts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAccountsForParent
      # @param [Client] client
      # @param [Hash] params (see Client#list_accounts_for_parent)
      # @param [Hash] options (see Client#list_accounts_for_parent)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_accounts_for_parent operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_accounts_for_parent(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_accounts_for_parent(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAWSServiceAccessForOrganization
      # @param [Client] client
      # @param [Hash] params (see Client#list_aws_service_access_for_organization)
      # @param [Hash] options (see Client#list_aws_service_access_for_organization)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aws_service_access_for_organization operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_aws_service_access_for_organization(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_aws_service_access_for_organization(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChildren
      # @param [Client] client
      # @param [Hash] params (see Client#list_children)
      # @param [Hash] options (see Client#list_children)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_children operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_children(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_children(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCreateAccountStatus
      # @param [Client] client
      # @param [Hash] params (see Client#list_create_account_status)
      # @param [Hash] options (see Client#list_create_account_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_create_account_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_create_account_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_create_account_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDelegatedAdministrators
      # @param [Client] client
      # @param [Hash] params (see Client#list_delegated_administrators)
      # @param [Hash] options (see Client#list_delegated_administrators)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_delegated_administrators operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_delegated_administrators(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_delegated_administrators(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_delegated_administrators operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.delegated_administrators.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDelegatedServicesForAccount
      # @param [Client] client
      # @param [Hash] params (see Client#list_delegated_services_for_account)
      # @param [Hash] options (see Client#list_delegated_services_for_account)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_delegated_services_for_account operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_delegated_services_for_account(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_delegated_services_for_account(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_delegated_services_for_account operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.delegated_services.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListHandshakesForAccount
      # @param [Client] client
      # @param [Hash] params (see Client#list_handshakes_for_account)
      # @param [Hash] options (see Client#list_handshakes_for_account)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_handshakes_for_account operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_handshakes_for_account(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_handshakes_for_account(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListHandshakesForOrganization
      # @param [Client] client
      # @param [Hash] params (see Client#list_handshakes_for_organization)
      # @param [Hash] options (see Client#list_handshakes_for_organization)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_handshakes_for_organization operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_handshakes_for_organization(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_handshakes_for_organization(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListOrganizationalUnitsForParent
      # @param [Client] client
      # @param [Hash] params (see Client#list_organizational_units_for_parent)
      # @param [Hash] options (see Client#list_organizational_units_for_parent)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_organizational_units_for_parent operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_organizational_units_for_parent(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_organizational_units_for_parent(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListParents
      # @param [Client] client
      # @param [Hash] params (see Client#list_parents)
      # @param [Hash] options (see Client#list_parents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_parents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_parents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_parents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_policies)
      # @param [Hash] options (see Client#list_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_policies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_policies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPoliciesForTarget
      # @param [Client] client
      # @param [Hash] params (see Client#list_policies_for_target)
      # @param [Hash] options (see Client#list_policies_for_target)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_policies_for_target operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_policies_for_target(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_policies_for_target(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRoots
      # @param [Client] client
      # @param [Hash] params (see Client#list_roots)
      # @param [Hash] options (see Client#list_roots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_roots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_roots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_roots(params, @options)
            e.yield(response)
            output_token = response.next_token
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
          @prev_token = params[:next_token]
          response = @client.list_tags_for_resource(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_tags_for_resource(params, @options)
            e.yield(response)
            output_token = response.next_token
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

    class ListTargetsForPolicy
      # @param [Client] client
      # @param [Hash] params (see Client#list_targets_for_policy)
      # @param [Hash] options (see Client#list_targets_for_policy)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_targets_for_policy operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_targets_for_policy(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_targets_for_policy(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
