# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkMail
  module Paginators

    class ListAliases
      # @param [Client] client
      # @param [Hash] params (see Client#list_aliases)
      # @param [Hash] options (see Client#list_aliases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aliases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_aliases(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_aliases(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGroupMembers
      # @param [Client] client
      # @param [Hash] params (see Client#list_group_members)
      # @param [Hash] options (see Client#list_group_members)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_group_members operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_group_members(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_group_members(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_groups)
      # @param [Hash] options (see Client#list_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMailboxExportJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_mailbox_export_jobs)
      # @param [Hash] options (see Client#list_mailbox_export_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_mailbox_export_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_mailbox_export_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_mailbox_export_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMailboxPermissions
      # @param [Client] client
      # @param [Hash] params (see Client#list_mailbox_permissions)
      # @param [Hash] options (see Client#list_mailbox_permissions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_mailbox_permissions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_mailbox_permissions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_mailbox_permissions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMailDomains
      # @param [Client] client
      # @param [Hash] params (see Client#list_mail_domains)
      # @param [Hash] options (see Client#list_mail_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_mail_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_mail_domains(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_mail_domains(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMobileDeviceAccessOverrides
      # @param [Client] client
      # @param [Hash] params (see Client#list_mobile_device_access_overrides)
      # @param [Hash] options (see Client#list_mobile_device_access_overrides)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_mobile_device_access_overrides operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_mobile_device_access_overrides(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_mobile_device_access_overrides(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListOrganizations
      # @param [Client] client
      # @param [Hash] params (see Client#list_organizations)
      # @param [Hash] options (see Client#list_organizations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_organizations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_organizations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_organizations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResourceDelegates
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_delegates)
      # @param [Hash] options (see Client#list_resource_delegates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_delegates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resource_delegates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resource_delegates(params, @options)
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

    class ListUsers
      # @param [Client] client
      # @param [Hash] params (see Client#list_users)
      # @param [Hash] options (see Client#list_users)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_users operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_users(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_users(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
