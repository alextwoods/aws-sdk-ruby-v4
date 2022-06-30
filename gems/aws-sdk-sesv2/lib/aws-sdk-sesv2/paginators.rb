# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SESv2
  module Paginators

    class GetDedicatedIps
      # @param [Client] client
      # @param [Hash] params (see Client#get_dedicated_ips)
      # @param [Hash] options (see Client#get_dedicated_ips)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_dedicated_ips operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_dedicated_ips(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_dedicated_ips(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListConfigurationSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_configuration_sets)
      # @param [Hash] options (see Client#list_configuration_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_configuration_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_configuration_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_configuration_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListContactLists
      # @param [Client] client
      # @param [Hash] params (see Client#list_contact_lists)
      # @param [Hash] options (see Client#list_contact_lists)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_contact_lists operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_contact_lists(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_contact_lists(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListContacts
      # @param [Client] client
      # @param [Hash] params (see Client#list_contacts)
      # @param [Hash] options (see Client#list_contacts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_contacts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_contacts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_contacts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCustomVerificationEmailTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_verification_email_templates)
      # @param [Hash] options (see Client#list_custom_verification_email_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_verification_email_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_verification_email_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_verification_email_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDedicatedIpPools
      # @param [Client] client
      # @param [Hash] params (see Client#list_dedicated_ip_pools)
      # @param [Hash] options (see Client#list_dedicated_ip_pools)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dedicated_ip_pools operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dedicated_ip_pools(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dedicated_ip_pools(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDeliverabilityTestReports
      # @param [Client] client
      # @param [Hash] params (see Client#list_deliverability_test_reports)
      # @param [Hash] options (see Client#list_deliverability_test_reports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_deliverability_test_reports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_deliverability_test_reports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_deliverability_test_reports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDomainDeliverabilityCampaigns
      # @param [Client] client
      # @param [Hash] params (see Client#list_domain_deliverability_campaigns)
      # @param [Hash] options (see Client#list_domain_deliverability_campaigns)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_domain_deliverability_campaigns operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_domain_deliverability_campaigns(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_domain_deliverability_campaigns(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEmailIdentities
      # @param [Client] client
      # @param [Hash] params (see Client#list_email_identities)
      # @param [Hash] options (see Client#list_email_identities)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_email_identities operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_email_identities(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_email_identities(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEmailTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_email_templates)
      # @param [Hash] options (see Client#list_email_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_email_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_email_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_email_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImportJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_import_jobs)
      # @param [Hash] options (see Client#list_import_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_import_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_import_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_import_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSuppressedDestinations
      # @param [Client] client
      # @param [Hash] params (see Client#list_suppressed_destinations)
      # @param [Hash] options (see Client#list_suppressed_destinations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_suppressed_destinations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_suppressed_destinations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_suppressed_destinations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
