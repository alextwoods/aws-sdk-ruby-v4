# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GuardDuty
  module Paginators

    class GetUsageStatistics
      # @param [Client] client
      # @param [Hash] params (see Client#get_usage_statistics)
      # @param [Hash] options (see Client#get_usage_statistics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_usage_statistics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_usage_statistics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_usage_statistics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDetectors
      # @param [Client] client
      # @param [Hash] params (see Client#list_detectors)
      # @param [Hash] options (see Client#list_detectors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_detectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_detectors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_detectors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_detectors operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.detector_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFilters
      # @param [Client] client
      # @param [Hash] params (see Client#list_filters)
      # @param [Hash] options (see Client#list_filters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_filters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_filters(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_filters(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_filters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.filter_names.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFindings
      # @param [Client] client
      # @param [Hash] params (see Client#list_findings)
      # @param [Hash] options (see Client#list_findings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_findings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_findings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_findings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_findings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.finding_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInvitations
      # @param [Client] client
      # @param [Hash] params (see Client#list_invitations)
      # @param [Hash] options (see Client#list_invitations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_invitations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_invitations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_invitations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_invitations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.invitations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListIPSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_ip_sets)
      # @param [Hash] options (see Client#list_ip_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ip_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_ip_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_ip_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_ip_sets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ip_set_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListMembers
      # @param [Client] client
      # @param [Hash] params (see Client#list_members)
      # @param [Hash] options (see Client#list_members)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_members operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_members(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_members(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_members operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.members.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOrganizationAdminAccounts
      # @param [Client] client
      # @param [Hash] params (see Client#list_organization_admin_accounts)
      # @param [Hash] options (see Client#list_organization_admin_accounts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_organization_admin_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_organization_admin_accounts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_organization_admin_accounts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_organization_admin_accounts operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.admin_accounts.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPublishingDestinations
      # @param [Client] client
      # @param [Hash] params (see Client#list_publishing_destinations)
      # @param [Hash] options (see Client#list_publishing_destinations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_publishing_destinations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_publishing_destinations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_publishing_destinations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListThreatIntelSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_threat_intel_sets)
      # @param [Hash] options (see Client#list_threat_intel_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_threat_intel_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_threat_intel_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_threat_intel_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_threat_intel_sets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.threat_intel_set_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
