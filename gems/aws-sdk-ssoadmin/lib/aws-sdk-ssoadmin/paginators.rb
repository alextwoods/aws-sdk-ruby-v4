# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOAdmin
  module Paginators

    class ListAccountAssignmentCreationStatus
      # @param [Client] client
      # @param [Hash] params (see Client#list_account_assignment_creation_status)
      # @param [Hash] options (see Client#list_account_assignment_creation_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_account_assignment_creation_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_account_assignment_creation_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_account_assignment_creation_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_account_assignment_creation_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.account_assignments_creation_status.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAccountAssignmentDeletionStatus
      # @param [Client] client
      # @param [Hash] params (see Client#list_account_assignment_deletion_status)
      # @param [Hash] options (see Client#list_account_assignment_deletion_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_account_assignment_deletion_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_account_assignment_deletion_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_account_assignment_deletion_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_account_assignment_deletion_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.account_assignments_deletion_status.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAccountAssignments
      # @param [Client] client
      # @param [Hash] params (see Client#list_account_assignments)
      # @param [Hash] options (see Client#list_account_assignments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_account_assignments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_account_assignments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_account_assignments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_account_assignments operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.account_assignments.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAccountsForProvisionedPermissionSet
      # @param [Client] client
      # @param [Hash] params (see Client#list_accounts_for_provisioned_permission_set)
      # @param [Hash] options (see Client#list_accounts_for_provisioned_permission_set)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_accounts_for_provisioned_permission_set operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_accounts_for_provisioned_permission_set(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_accounts_for_provisioned_permission_set(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_accounts_for_provisioned_permission_set operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.account_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInstances
      # @param [Client] client
      # @param [Hash] params (see Client#list_instances)
      # @param [Hash] options (see Client#list_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instances.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListManagedPoliciesInPermissionSet
      # @param [Client] client
      # @param [Hash] params (see Client#list_managed_policies_in_permission_set)
      # @param [Hash] options (see Client#list_managed_policies_in_permission_set)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_managed_policies_in_permission_set operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_managed_policies_in_permission_set(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_managed_policies_in_permission_set(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_managed_policies_in_permission_set operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.attached_managed_policies.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPermissionSetProvisioningStatus
      # @param [Client] client
      # @param [Hash] params (see Client#list_permission_set_provisioning_status)
      # @param [Hash] options (see Client#list_permission_set_provisioning_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_permission_set_provisioning_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_permission_set_provisioning_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_permission_set_provisioning_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_permission_set_provisioning_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.permission_sets_provisioning_status.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPermissionSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_permission_sets)
      # @param [Hash] options (see Client#list_permission_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_permission_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_permission_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_permission_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_permission_sets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.permission_sets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPermissionSetsProvisionedToAccount
      # @param [Client] client
      # @param [Hash] params (see Client#list_permission_sets_provisioned_to_account)
      # @param [Hash] options (see Client#list_permission_sets_provisioned_to_account)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_permission_sets_provisioned_to_account operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_permission_sets_provisioned_to_account(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_permission_sets_provisioned_to_account(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_permission_sets_provisioned_to_account operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.permission_sets.each do |item|
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

  end
end
