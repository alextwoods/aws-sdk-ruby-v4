# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RAM
  module Paginators

    class GetResourcePolicies
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_policies)
      # @param [Hash] options (see Client#get_resource_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_policies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_policies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetResourceShareAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_share_associations)
      # @param [Hash] options (see Client#get_resource_share_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_share_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_share_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_share_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetResourceShareInvitations
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_share_invitations)
      # @param [Hash] options (see Client#get_resource_share_invitations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_share_invitations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_share_invitations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_share_invitations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetResourceShares
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_shares)
      # @param [Hash] options (see Client#get_resource_shares)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_shares operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_shares(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_shares(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPendingInvitationResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_pending_invitation_resources)
      # @param [Hash] options (see Client#list_pending_invitation_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pending_invitation_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pending_invitation_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pending_invitation_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPermissions
      # @param [Client] client
      # @param [Hash] params (see Client#list_permissions)
      # @param [Hash] options (see Client#list_permissions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_permissions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_permissions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_permissions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPermissionVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_permission_versions)
      # @param [Hash] options (see Client#list_permission_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_permission_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_permission_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_permission_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPrincipals
      # @param [Client] client
      # @param [Hash] params (see Client#list_principals)
      # @param [Hash] options (see Client#list_principals)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_principals operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_principals(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_principals(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_resources)
      # @param [Hash] options (see Client#list_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResourceSharePermissions
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_share_permissions)
      # @param [Hash] options (see Client#list_resource_share_permissions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_share_permissions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resource_share_permissions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resource_share_permissions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResourceTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_types)
      # @param [Hash] options (see Client#list_resource_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resource_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resource_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
